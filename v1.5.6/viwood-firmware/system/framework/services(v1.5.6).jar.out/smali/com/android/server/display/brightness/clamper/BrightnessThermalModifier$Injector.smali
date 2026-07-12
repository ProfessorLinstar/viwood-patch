.class Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;
.super Ljava/lang/Object;
.source "BrightnessThermalModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 1

    .line 368
    new-instance p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    return-object p0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .locals 0

    .line 363
    const-string/jumbo p0, "thermalservice"

    .line 364
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 363
    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method
