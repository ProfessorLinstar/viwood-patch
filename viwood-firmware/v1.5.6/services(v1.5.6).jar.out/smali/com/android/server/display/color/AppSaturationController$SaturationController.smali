.class public Lcom/android/server/display/color/AppSaturationController$SaturationController;
.super Ljava/lang/Object;
.source "AppSaturationController.java"


# instance fields
.field public final mControllerRefs:Ljava/util/List;

.field public final mSaturationLevels:Landroid/util/ArrayMap;

.field public mTransformMatrix:[F


# direct methods
.method public static bridge synthetic -$$Nest$maddColorTransformController(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->addColorTransformController(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSaturationLevel(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->setSaturationLevel(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    const/16 v0, 0x9

    .line 158
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/color/AppSaturationController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>()V

    return-void
.end method


# virtual methods
.method public final addColorTransformController(Ljava/lang/ref/WeakReference;)Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->clearExpiredReferences()V

    .line 175
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final calculateSaturationLevel()I
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final clearExpiredReferences()V
    .locals 1

    .line 214
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 215
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 216
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 218
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    if-nez v0, :cond_0

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            mSaturationLevels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            mControllerRefs count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final setSaturationLevel(Ljava/lang/String;I)Z
    .locals 1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 162
    iget-object p2, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final updateState()Z
    .locals 4

    .line 194
    invoke-virtual {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->calculateSaturationLevel()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    invoke-static {v0, v1}, Lcom/android/server/display/color/AppSaturationController;->computeGrayscaleTransformMatrix(F[F)V

    .line 197
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 199
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 201
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    if-eqz v2, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    sget-object v3, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    invoke-interface {v2, v1, v3}, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;->applyAppSaturation([F[F)V

    const/4 v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return v1
.end method
