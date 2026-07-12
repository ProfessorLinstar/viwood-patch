.class public Lcom/android/server/biometrics/AuthenticationStatsCollector$1;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticationStatsCollector.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 81
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing data for user: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AuthenticationStatsCollector"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$monUserRemoved(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V

    :cond_0
    return-void
.end method
