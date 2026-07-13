.class public Lcom/android/server/wm/AppCompatResizeOverrides;
.super Ljava/lang/Object;
.source "AppCompatResizeOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowRestrictedResizability:Ljava/util/function/BooleanSupplier;


# direct methods
.method public static synthetic $r8$lambda$KwgGiBwNtcm_k4DA4WB9j_d8dCA(Lcom/android/server/wm/AppCompatResizeOverrides;Landroid/content/pm/PackageManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatResizeOverrides;->lambda$new$0(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 52
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 54
    new-instance p1, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatResizeOverrides;Landroid/content/pm/PackageManager;)V

    invoke-static {p1}, Lcom/android/server/wm/AppCompatUtils;->asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowRestrictedResizability:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method public static allowRestrictedResizability(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .locals 2

    .line 76
    :try_start_0
    const-string v0, "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public allowRestrictedResizability()Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowRestrictedResizability:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$new$0(Landroid/content/pm/PackageManager;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1, v1, v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->allowRestrictedResizability(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 62
    :cond_0
    :try_start_0
    const-string v0, "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

    iget-object v1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 65
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 62
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldOverrideForceNonResizeApp()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xacbec0b

    .line 112
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 111
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideForceResizeApp()Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xa5faf38

    .line 97
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 96
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    return p0
.end method
