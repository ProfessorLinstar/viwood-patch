.class public final Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPid:I

.field public mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPid(Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mUid:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;IILjava/lang/String;)V
    .locals 0

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput p2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mUid:I

    .line 1367
    iput p3, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPid:I

    .line 1368
    iput-object p4, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method
