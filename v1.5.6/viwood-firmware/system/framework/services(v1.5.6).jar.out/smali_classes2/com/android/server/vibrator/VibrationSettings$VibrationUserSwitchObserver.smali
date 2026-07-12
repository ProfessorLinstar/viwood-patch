.class final Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "VibrationSettings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    .line 921
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;I)V

    .line 914
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    return-void
.end method
