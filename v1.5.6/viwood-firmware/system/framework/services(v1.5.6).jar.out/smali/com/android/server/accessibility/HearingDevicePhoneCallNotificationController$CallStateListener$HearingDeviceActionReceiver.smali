.class public Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HearingDevicePhoneCallNotificationController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    const-string p2, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 397
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-static {p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mswitchToBuiltinMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    .line 398
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mshowNotification(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Z)V

    return-void

    .line 399
    :cond_1
    const-string p2, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 400
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-static {p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mswitchToHearingMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    .line 401
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mshowNotification(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Z)V

    :cond_2
    :goto_0
    return-void
.end method
