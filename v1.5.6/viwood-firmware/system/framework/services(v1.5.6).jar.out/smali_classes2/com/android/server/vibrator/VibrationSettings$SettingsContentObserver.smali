.class final Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "VibrationSettings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 844
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 849
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    const/4 v0, -0x2

    invoke-static {p1, v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;I)V

    .line 850
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    return-void
.end method
