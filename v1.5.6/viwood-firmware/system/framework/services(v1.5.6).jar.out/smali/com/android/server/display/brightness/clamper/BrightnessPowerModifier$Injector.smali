.class Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;
.super Ljava/lang/Object;
.source "BrightnessPowerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 1

    .line 480
    new-instance p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    return-object p0
.end method

.method public getPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)Lcom/android/server/display/brightness/clamper/PmicMonitor;
    .locals 0

    .line 475
    new-instance p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/PmicMonitor;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)V

    return-object p0
.end method
