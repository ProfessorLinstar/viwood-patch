.class public final Lcom/android/server/display/BrightnessTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 989
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 994
    sget-boolean p1, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "settings change "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightnessTracker"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmInjector(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p2}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmContentResolver(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 998
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 999
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1001
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1002
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
