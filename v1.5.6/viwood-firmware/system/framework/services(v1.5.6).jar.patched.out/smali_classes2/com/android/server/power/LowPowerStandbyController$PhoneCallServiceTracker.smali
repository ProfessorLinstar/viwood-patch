.class public final Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "LowPowerStandbyController.java"


# instance fields
.field public mRegistered:Z

.field public final mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 1459
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    const/4 p1, 0x0

    .line 1460
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z

    .line 1461
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public foregroundServiceStateChanged(I)V
    .locals 3

    .line 1497
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1498
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/LowPowerStandbyController;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    const/4 v2, 0x4

    .line 1499
    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1513
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->uidStartedPhoneCallService(I)V

    return-void

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1516
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->uidStoppedPhoneCallService(I)V

    return-void
.end method

.method public onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    .line 1479
    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmContext(Lcom/android/server/power/LowPowerStandbyController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1480
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    .line 1481
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p2}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/power/LowPowerStandbyController;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x4

    const/4 p4, 0x0

    .line 1482
    invoke-virtual {p2, p3, p1, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1483
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p2}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/power/LowPowerStandbyController;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmClock(Lcom/android/server/power/LowPowerStandbyController;)Lcom/android/server/power/LowPowerStandbyController$Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public register()V
    .locals 1

    .line 1464
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1468
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmActivityManager(Lcom/android/server/power/LowPowerStandbyController;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    const/4 v0, 0x1

    .line 1469
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final uidStartedPhoneCallService(I)V
    .locals 1

    .line 1524
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method

.method public final uidStoppedPhoneCallService(I)V
    .locals 1

    .line 1531
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method
