.class public final Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
.super Ljava/lang/Object;
.source "HandwritingModeController.java"


# instance fields
.field public final mHandwritingChannel:Landroid/view/InputChannel;

.field public final mRecordedEvents:Ljava/util/List;

.field public final mRequestId:I


# direct methods
.method public constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    .line 478
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    .line 479
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;Lcom/android/server/inputmethod/HandwritingModeController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getHandwritingChannel()Landroid/view/InputChannel;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method public getRecordedEvents()Ljava/util/List;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    return-object p0
.end method

.method public getRequestId()I
    .locals 0

    .line 483
    iget p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    return p0
.end method
