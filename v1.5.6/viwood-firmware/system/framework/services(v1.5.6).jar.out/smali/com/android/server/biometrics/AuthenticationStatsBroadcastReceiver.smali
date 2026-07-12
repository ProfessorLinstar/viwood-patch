.class public Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticationStatsBroadcastReceiver.java"


# instance fields
.field public final mCollectorConsumer:Ljava/util/function/Consumer;

.field public final mModality:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mCollectorConsumer:Ljava/util/function/Consumer;

    .line 53
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mModality:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 58
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 60
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AuthenticationStatsBroadcastReceiver"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mCollectorConsumer:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;->mModality:I

    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    invoke-direct {v2}, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;-><init>()V

    .line 66
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/biometrics/AuthenticationStatsCollector;-><init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotification;Ljava/time/Clock;)V

    .line 64
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
