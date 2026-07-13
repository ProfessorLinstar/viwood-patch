.class public Lcom/android/server/notification/NotificationAttentionHelper$1;
.super Landroid/telephony/PhoneStateListener;
.source "NotificationAttentionHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$1;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 336
    iget-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$1;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p2}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCallState(Lcom/android/server/notification/NotificationAttentionHelper;)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    .line 337
    :cond_0
    sget-boolean p2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call state changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$smcallStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotifAttentionHelper"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$1;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmCallState(Lcom/android/server/notification/NotificationAttentionHelper;I)V

    return-void
.end method
