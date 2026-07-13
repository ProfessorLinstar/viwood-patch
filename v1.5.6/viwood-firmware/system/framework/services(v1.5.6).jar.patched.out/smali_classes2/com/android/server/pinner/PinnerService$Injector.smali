.class public Lcom/android/server/pinner/PinnerService$Injector;
.super Ljava/lang/Object;
.source "PinnerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceConfigInterface()Landroid/provider/DeviceConfigInterface;
    .locals 0

    .line 226
    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .locals 0

    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mpinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    return-object p0
.end method

.method public publishBinderService(Lcom/android/server/pinner/PinnerService;Landroid/os/Binder;)V
    .locals 0

    .line 230
    const-string/jumbo p0, "pinner"

    invoke-static {p1, p0, p2}, Lcom/android/server/pinner/PinnerService;->access$000(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
