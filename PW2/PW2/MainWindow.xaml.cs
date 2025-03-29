using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Media3D;
using System.Windows.Threading;

namespace PW2;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    private readonly Random randomGenerator = new Random();

    public MainWindow()
    {
        InitializeComponent();
        Loaded += Window_Loaded;
    }

    private void Window_Loaded(object sender, RoutedEventArgs e)
    {
        // Запускаємо анімації
        StartRandomAnimation(TriangleTransform);
        StartRandomAnimation(RectangleTransform);
        StartRandomAnimation(CircleTransform);
        StartRandomAnimation(PyramidTransform);
        StartRandomAnimation(PrismTransform);
    }

    private void StartRandomAnimation(TranslateTransform transform)
    {
        // Генеруємо випадкові параметри для анімації
        double durationSeconds = 5 + randomGenerator.NextDouble() * 10;
        var duration = TimeSpan.FromSeconds(durationSeconds);

        // Випадкові цільові точки відносно центру
        int targetX = randomGenerator.Next(-300, 300);
        int targetY = randomGenerator.Next(-200, 200);

        // Анімація по X з випадковою функцією плавності
        var xAnimation = new DoubleAnimation
        {
            To = targetX,
            Duration = duration,
            AutoReverse = true,
            RepeatBehavior = RepeatBehavior.Forever,
            EasingFunction = GetRandomEasingFunction()
        };

        // Анімація по Y з випадковою функцією плавності
        var yAnimation = new DoubleAnimation
        {
            To = targetY,
            Duration = duration,
            AutoReverse = true,
            RepeatBehavior = RepeatBehavior.Forever,
            EasingFunction = GetRandomEasingFunction()
        };

        transform.BeginAnimation(TranslateTransform.XProperty, xAnimation);
        transform.BeginAnimation(TranslateTransform.YProperty, yAnimation);
    }

    private EasingFunctionBase GetRandomEasingFunction()
    {
        int functionType = randomGenerator.Next(0, 5);

        switch (functionType)
        {
            case 0:
                return new SineEase { EasingMode = EasingMode.EaseInOut };

            case 1:
                return new ElasticEase
                {
                    EasingMode = EasingMode.EaseOut,
                    Oscillations = 1,
                    Springiness = 1 + randomGenerator.NextDouble() * 2
                };

            case 2:
                return new BounceEase
                {
                    EasingMode = EasingMode.EaseInOut,
                    Bounces = randomGenerator.Next(1, 3),
                    Bounciness = 1 + randomGenerator.NextDouble() * 2
                };

            case 3:
                return new PowerEase
                {
                    Power = 2 + randomGenerator.NextDouble() * 3,
                    EasingMode = EasingMode.EaseInOut
                };

            default:
                return new BackEase
                {
                    Amplitude = 0.1 + randomGenerator.NextDouble() * 0.3,
                    EasingMode = EasingMode.EaseInOut
                };
        }
    }
}