.class public final Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "BrightnessPowerModifier.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mStarted:Z

.field public mThermalService:Landroid/os/IThermalService;

.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;


# direct methods
.method public static synthetic $r8$lambda$20aF-SPGVM6H1027Ons6vT4GPus(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->-$$Nest$mactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubnOdYg7n4fcHPzKnKW852Cva3Y(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->lambda$notifyThrottling$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Landroid/os/Handler;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 386
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    .line 387
    const-string/jumbo p1, "thermalservice"

    .line 388
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 387
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 438
    const-string v0, "  ThermalLevelObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    return-object p0
.end method

.method public final synthetic lambda$notifyThrottling$0(I)V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->-$$Nest$mdeactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;I)V

    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    .line 413
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activating pmic monitor due to thermal state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessPowerClamper"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->-$$Nest$fgetmPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)Lcom/android/server/display/brightness/clamper/PmicMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 396
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 404
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 407
    const-string v0, "BrightnessPowerClamper"

    const-string v1, "Failed to register thermal status listener"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 425
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 432
    const-string v1, "BrightnessPowerClamper"

    const-string v2, "Failed to unregister thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method
