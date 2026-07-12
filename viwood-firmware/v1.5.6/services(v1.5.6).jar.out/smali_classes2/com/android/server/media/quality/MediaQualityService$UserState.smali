.class public final Lcom/android/server/media/quality/MediaQualityService$UserState;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# instance fields
.field public final mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

.field public final mActiveProcessingPictureListenerMap:Ljava/util/Map;

.field public final mPictureProfileCallbackPidUidMap:Ljava/util/Map;

.field public final mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

.field public final mSoundProfileCallbackPidUidMap:Ljava/util/Map;

.field public final mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveProcessingPictureCallbackList(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveProcessingPictureListenerMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPictureProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Landroid/content/Context;I)V
    .locals 0

    .line 1355
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1337
    new-instance p2, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    .line 1340
    new-instance p2, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    invoke-direct {p2, p1, p3}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    .line 1343
    new-instance p2, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    invoke-direct {p2, p1, p3}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    .line 1346
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    .line 1349
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    .line 1352
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Landroid/content/Context;ILcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$UserState;-><init>(Lcom/android/server/media/quality/MediaQualityService;Landroid/content/Context;I)V

    return-void
.end method
