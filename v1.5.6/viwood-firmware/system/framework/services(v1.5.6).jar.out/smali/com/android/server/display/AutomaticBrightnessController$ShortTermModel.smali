.class public Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# instance fields
.field public mAnchor:F

.field public mBrightness:F

.field public mIsValid:Z

.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnchor(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightness(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcopyFrom(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->copyFrom(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvalidate(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->invalidate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeReset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;F)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->maybeReset(F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->reset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;FFZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->set(FFZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserBrightness(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;FF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->setUserBrightness(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 1296
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1297
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    const/4 p1, 0x0

    .line 1298
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Lcom/android/server/display/AutomaticBrightnessController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V
    .locals 1

    .line 1342
    iget v0, p1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 1343
    iget v0, p1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 1344
    iget-boolean p1, p1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1354
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1355
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1356
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 1307
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 1308
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1309
    const-string p0, "AutomaticBrightnessController"

    const-string v0, "ShortTermModel: invalidate user data"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final maybeReset(F)Z
    .locals 2

    .line 1325
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmCurrentBrightnessMapper(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->shouldResetShortTermModel(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1327
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1329
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 1331
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final reset()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1301
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1302
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    const/4 v0, 0x0

    .line 1303
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    return-void
.end method

.method public final set(FFZ)V
    .locals 0

    .line 1337
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 1338
    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 1339
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    return-void
.end method

.method public final setUserBrightness(FF)V
    .locals 0

    .line 1314
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 1315
    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    const/4 p1, 0x1

    .line 1316
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 1317
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShortTermModel: anchor="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutomaticBrightnessController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAnchor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n mIsValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
