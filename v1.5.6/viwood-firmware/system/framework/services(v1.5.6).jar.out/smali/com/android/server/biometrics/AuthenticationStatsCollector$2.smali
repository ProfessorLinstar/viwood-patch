.class public Lcom/android/server/biometrics/AuthenticationStatsCollector$2;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticationStatsCollector.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 94
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 95
    const-string/jumbo v0, "modality"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 97
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$fgetmModality(Lcom/android/server/biometrics/AuthenticationStatsCollector;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 98
    iget-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {p2, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$mupdateAuthenticationStatsMapIfNeeded(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V

    .line 99
    iget-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {p2}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$fgetmUserAuthenticationStatsMap(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/util/Map;

    move-result-object p2

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/AuthenticationStats;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update enroll time for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthenticationStatsCollector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$fgetmClock(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/time/Clock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastEnrollmentTime(J)V

    :cond_0
    return-void
.end method
