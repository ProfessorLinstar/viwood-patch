.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final mAdServiceId:Ljava/lang/String;

.field public mBound:Z

.field public mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mPendingAppLinkCommand:Ljava/util/List;

.field public mReconnecting:Z

.field public mService:Landroid/media/tv/ad/ITvAdService;

.field public final mSessionTokens:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/content/ServiceConnection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Landroid/media/tv/ad/ITvAdService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->addPendingAppLinkCommand(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 2

    .line 3527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    .line 3520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 3528
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mComponent:Landroid/content/ComponentName;

    .line 3529
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mConnection:Landroid/content/ServiceConnection;

    .line 3530
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mAdServiceId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final addPendingAppLinkCommand(Landroid/os/Bundle;)V
    .locals 0

    .line 3534
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
