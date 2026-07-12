.class public Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
.super Ljava/lang/Object;
.source "MagnificationConnectionManager.java"


# static fields
.field public static final SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public mEnabled:Z

.field public mIdOfLastServiceToControl:I

.field public final mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field public final mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

.field public mScale:F

.field public final mSourceBounds:Landroid/graphics/Rect;

.field public mTrackingTypingFocusEnabled:Z

.field public volatile mTrackingTypingFocusStartTime:J

.field public volatile mTrackingTypingFocusSumTime:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1090
    const-class v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const-string/jumbo v1, "mTrackingTypingFocusSumTime"

    .line 1091
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .locals 2

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1074
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    .line 1079
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 1081
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 1083
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1085
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 1087
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    const-wide/16 v0, 0x0

    .line 1089
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 1093
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    .line 1097
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 1098
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    return-void
.end method


# virtual methods
.method public disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3

    .line 1142
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1147
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    const/4 p1, -0x1

    .line 1148
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1149
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->pauseTrackingTypingFocusRecord()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .locals 8

    .line 1108
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getScale()F

    move-result p1

    .line 1111
    :cond_0
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v2

    .line 1112
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setMagnificationFrameOffsetRatioByWindowPosition(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1116
    iput v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    const/4 p1, 0x1

    .line 1117
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 1118
    iput p6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCenterX()F
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p0

    return p0
.end method

.method public getCenterY()F
    .locals 0

    .line 1294
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    return p0
.end method

.method public getIdOfLastServiceToControl()I
    .locals 0

    .line 1187
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 1175
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1262
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    return p0
.end method

.method public isPositionInSourceBounds(FF)Z
    .locals 0

    .line 1204
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isTrackingTypingFocusEnabled()Z
    .locals 0

    .line 1220
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    return p0
.end method

.method public move(FF)V
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFF)Z

    return-void
.end method

.method public onSourceBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 1284
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public pauseTrackingTypingFocusRecord()V
    .locals 6

    .line 1234
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    sub-long/2addr v0, v4

    .line 1237
    sget-object v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 1238
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    :cond_0
    return-void
.end method

.method public pointersInWindow(Landroid/view/MotionEvent;)I
    .locals 6

    .line 1192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1194
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1195
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1196
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1277
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    const/4 v0, -0x1

    .line 1278
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1279
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public setMagnificationFrameOffsetRatioByWindowPosition(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 1127
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public setMagnifierLocation(Landroid/graphics/Rect;)V
    .locals 0

    .line 1180
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScale(F)V
    .locals 3

    .line 1162
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v0

    .line 1166
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 1168
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$msetScaleForWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1169
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setTrackingTypingFocusEnabled(Z)V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 1209
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isImeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->startTrackingTypingFocusRecord()V

    .line 1213
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->stopAndLogTrackingTypingFocusRecordIfNeeded()V

    .line 1216
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    return-void
.end method

.method public startTrackingTypingFocusRecord()V
    .locals 4

    .line 1224
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    :cond_0
    return-void
.end method

.method public stopAndLogTrackingTypingFocusRecordIfNeeded()V
    .locals 6

    .line 1247
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1248
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    sub-long/2addr v0, v4

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 1250
    :goto_1
    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    add-long/2addr v4, v0

    .line 1255
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->logTrackingTypingFocus(J)V

    .line 1256
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 1257
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    return-void
.end method
