.class public Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;
.super Lcom/android/server/display/DisplayTopologyXmlStore$Injector;
.source "DisplayTopologyCoordinator.java"


# instance fields
.field public final synthetic val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

.field public final synthetic val$uniqueIdToDisplayIdMapping:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 0

    .line 313
    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$uniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayIdToUniqueIdMapping()Landroid/util/SparseArray;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getUniqueIdToDisplayIdMapping()Ljava/util/Map;
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$uniqueIdToDisplayIdMapping:Ljava/util/Map;

    return-object p0
.end method
