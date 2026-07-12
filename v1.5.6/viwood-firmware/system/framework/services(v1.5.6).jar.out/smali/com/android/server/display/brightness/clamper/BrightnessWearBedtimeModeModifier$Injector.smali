.class Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;
.super Ljava/lang/Object;
.source "BrightnessWearBedtimeModeModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerBedtimeModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    .line 153
    const-string p0, "bedtime_mode"

    .line 154
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 153
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
