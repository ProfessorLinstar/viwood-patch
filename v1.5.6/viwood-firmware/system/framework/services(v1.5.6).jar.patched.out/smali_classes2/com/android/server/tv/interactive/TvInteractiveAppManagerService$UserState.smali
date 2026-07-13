.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final mAdCallbacks:Landroid/os/RemoteCallbackList;

.field public mAdServiceMap:Ljava/util/Map;

.field public final mAdServiceStateMap:Ljava/util/Map;

.field public final mAdSessionStateMap:Ljava/util/Map;

.field public final mAppLinkInfoList:Ljava/util/List;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mClientStateMap:Ljava/util/Map;

.field public mIAppMap:Ljava/util/Map;

.field public final mPackageSet:Ljava/util/Set;

.field public final mServiceStateMap:Ljava/util/Map;

.field public final mSessionStateMap:Ljava/util/Map;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdServiceMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppLinkInfoList(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAppLinkInfoList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageSet(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdServiceMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 3315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    .line 3317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 3319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 3321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    .line 3323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 3325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 3328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    .line 3330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAppLinkInfoList:Ljava/util/List;

    .line 3331
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 3335
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 3339
    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;-><init>(I)V

    return-void
.end method
