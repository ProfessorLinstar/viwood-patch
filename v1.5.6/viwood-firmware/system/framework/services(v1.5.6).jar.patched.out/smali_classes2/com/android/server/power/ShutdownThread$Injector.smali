.class Lcom/android/server/power/ShutdownThread$Injector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultShutdownVibrationEffectFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1007
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040256

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 0

    .line 995
    new-instance p0, Landroid/os/SystemVibrator;

    invoke-direct {p0, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public isShutdownVibrationDisabled(Landroid/content/Context;)Z
    .locals 2

    .line 1012
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111013f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 1014
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public sleep(J)V
    .locals 0

    .line 1000
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
