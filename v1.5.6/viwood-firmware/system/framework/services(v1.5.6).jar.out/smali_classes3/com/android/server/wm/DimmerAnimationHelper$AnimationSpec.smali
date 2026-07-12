.class public Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
.super Ljava/lang/Object;
.source "DimmerAnimationHelper.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

.field public final mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

.field public mCurrentAlpha:F

.field public mCurrentBlur:I

.field public final mDuration:J

.field public mStarted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V
    .locals 1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    .line 338
    iput-boolean v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    .line 342
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 343
    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 344
    iput-wide p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 359
    iput-boolean p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    return-void

    :cond_0
    long-to-float p3, p3

    .line 362
    invoke-interface {p0, p3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getFraction(F)F

    move-result p3

    .line 363
    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object p4, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Float;

    .line 364
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p4, v0

    mul-float/2addr p4, p3

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p4, v0

    iput p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    float-to-int p3, p3

    .line 365
    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object p4, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    .line 366
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p4, v0

    mul-int/2addr p3, p4

    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object p4, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    .line 367
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 368
    iget p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 369
    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 371
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Dimmer#AnimationSpec tried to access "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after release"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "from_alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 383
    const-string v0, " to_alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "from_blur="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object p2, p2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 385
    const-string p2, " to_blur="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object p2, p2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 386
    const-string p2, " duration="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const-wide v0, 0x10b00000003L

    .line 391
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 392
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v2, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-wide v3, 0x10200000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 393
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v2, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10300000003L

    .line 394
    iget-wide v4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 395
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation spec: alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
