.class public Lcom/android/server/display/color/AppSaturationController;
.super Ljava/lang/Object;
.source "AppSaturationController.java"


# static fields
.field static final TRANSLATION_VECTOR:[F


# instance fields
.field public final mAppsMap:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    return-void
.end method

.method public static computeGrayscaleTransformMatrix(F[F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const v1, 0x3e6c8b44    # 0.231f

    mul-float/2addr v1, v0

    const v2, 0x3f370a3d    # 0.715f

    mul-float/2addr v2, v0

    const v3, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, v3

    const/4 v3, 0x3

    .line 138
    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    const/4 v2, 0x2

    aput v0, v4, v2

    .line 140
    aget v0, v4, v5

    add-float/2addr v0, p0

    aput v0, p1, v5

    .line 141
    aget v0, v4, v5

    aput v0, p1, v1

    .line 142
    aput v0, p1, v2

    .line 143
    aget v0, v4, v1

    aput v0, p1, v3

    const/4 v1, 0x4

    add-float v3, v0, p0

    .line 144
    aput v3, p1, v1

    const/4 v1, 0x5

    .line 145
    aput v0, p1, v1

    .line 146
    aget v0, v4, v2

    const/4 v1, 0x6

    aput v0, p1, v1

    const/4 v1, 0x7

    .line 147
    aput v0, p1, v1

    const/16 v1, 0x8

    add-float/2addr v0, p0

    .line 148
    aput v0, p1, v1

    return-void
.end method


# virtual methods
.method public addColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/AppSaturationController;->getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object p0

    .line 57
    invoke-static {p0, p3}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->-$$Nest$maddColorTransformController(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 78
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    const-string v1, "App Saturation: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string p0, "    No packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 84
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v6, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 89
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    invoke-static {v7, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->-$$Nest$mdump(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 94
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOrCreateSaturationControllerLocked(Landroid/util/SparseArray;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .locals 1

    .line 126
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    return-object p0

    .line 130
    :cond_0
    new-instance p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>(Lcom/android/server/display/color/AppSaturationController-IA;)V

    .line 131
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final getOrCreateUserIdMapLocked(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    .line 116
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 117
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/AppSaturationController;->getOrCreateUserIdMapLocked(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/AppSaturationController;->getOrCreateSaturationControllerLocked(Landroid/util/SparseArray;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object p0

    return-object p0
.end method

.method public setSaturationLevel(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/color/AppSaturationController;->getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object p0

    .line 70
    invoke-static {p0, p1, p4}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->-$$Nest$msetSaturationLevel(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
