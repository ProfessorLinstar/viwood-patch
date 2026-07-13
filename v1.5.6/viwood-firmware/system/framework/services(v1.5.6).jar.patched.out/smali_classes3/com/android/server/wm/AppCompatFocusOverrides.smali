.class public Lcom/android/server/wm/AppCompatFocusOverrides;
.super Ljava/lang/Object;
.source "AppCompatFocusOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 42
    const-string p2, "android.window.PROPERTY_COMPAT_ENABLE_FAKE_FOCUS"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public shouldSendFakeFocus()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0xfb1048b

    .line 63
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOverrideAndProperty(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
