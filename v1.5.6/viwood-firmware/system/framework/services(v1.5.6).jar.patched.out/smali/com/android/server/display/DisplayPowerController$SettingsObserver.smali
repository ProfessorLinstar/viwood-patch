.class public final Lcom/android/server/display/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public static synthetic $r8$lambda$hR4l2J1Oly4ccX4qYLu3DLKQkQ0(Lcom/android/server/display/DisplayPowerController$SettingsObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->lambda$onChange$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0

    .line 3165
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3166
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onChange$0()V
    .locals 1

    .line 3173
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleBrightnessModeChange(Lcom/android/server/display/DisplayPowerController;)V

    .line 3174
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 3171
    const-string/jumbo p1, "screen_brightness_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3172
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object p1

    new-instance p2, Lcom/android/server/display/DisplayPowerController$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/DisplayPowerController$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerController$SettingsObserver;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$Clock;

    move-result-object p0

    .line 3175
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 3172
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 3176
    :cond_0
    const-string/jumbo p1, "screen_brightness_for_als"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3178
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, -0x2

    invoke-static {p2, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 3182
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up auto-brightness for preset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessPresetToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3182
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msetUpAutoBrightness(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Handler;)V

    .line 3185
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3187
    :cond_1
    const-string p1, "bedtime_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3186
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3188
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    move v1, v0

    :cond_2
    invoke-static {p2, v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3190
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update for bedtime mode. Enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3193
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method
