.class public Lcom/android/server/power/Notifier$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "Notifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    const/4 p1, 0x1

    .line 1099
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p4}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmBroadcastStartTime(Lcom/android/server/power/Notifier;)J

    move-result-wide p4

    sub-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0xaa6

    .line 1099
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1101
    iget-object p0, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p0}, Lcom/android/server/power/Notifier;->-$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V

    return-void
.end method
