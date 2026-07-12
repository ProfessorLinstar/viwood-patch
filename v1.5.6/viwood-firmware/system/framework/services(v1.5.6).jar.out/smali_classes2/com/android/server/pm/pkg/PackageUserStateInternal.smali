.class public interface abstract Lcom/android/server/pm/pkg/PackageUserStateInternal;
.super Ljava/lang/Object;
.source "PackageUserStateInternal.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserState;
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateDefault;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/PackageUserStateDefault;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    return-void
.end method


# virtual methods
.method public abstract getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
.end method

.method public abstract getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
.end method
