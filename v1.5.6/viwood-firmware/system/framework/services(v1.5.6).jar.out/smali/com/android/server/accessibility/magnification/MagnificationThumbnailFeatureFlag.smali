.class public Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;
.super Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.source "MagnificationThumbnailFeatureFlag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 39
    const-string p0, "enable_magnifier_thumbnail"

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 34
    const-string p0, "accessibility"

    return-object p0
.end method

.method public bridge synthetic isFeatureFlagEnabled()Z
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->isFeatureFlagEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setFeatureFlagEnabled(Z)Z
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->setFeatureFlagEnabled(Z)Z

    move-result p0

    return p0
.end method
