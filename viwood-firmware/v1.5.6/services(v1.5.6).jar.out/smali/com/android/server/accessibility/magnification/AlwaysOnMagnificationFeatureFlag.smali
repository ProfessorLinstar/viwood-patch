.class public Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;
.super Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.source "AlwaysOnMagnificationFeatureFlag.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue()Z
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101eb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 48
    const-string p0, "AlwaysOnMagnifier__enable_always_on_magnifier"

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 43
    const-string/jumbo p0, "window_manager"

    return-object p0
.end method

.method public bridge synthetic isFeatureFlagEnabled()Z
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->isFeatureFlagEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setFeatureFlagEnabled(Z)Z
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->setFeatureFlagEnabled(Z)Z

    move-result p0

    return p0
.end method
