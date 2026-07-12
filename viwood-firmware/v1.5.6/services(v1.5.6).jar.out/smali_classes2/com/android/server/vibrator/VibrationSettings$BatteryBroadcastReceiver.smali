.class final Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibrationSettings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 872
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 873
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 874
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0, p2}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mupdateBatteryInfo(Lcom/android/server/vibrator/VibrationSettings;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
