.class Lcom/android/server/display/DisplayTopologyCoordinator$Injector;
.super Ljava/lang/Object;
.source "DisplayTopologyCoordinator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTopologyStore(Landroid/util/SparseArray;Ljava/util/Map;)Lcom/android/server/display/DisplayTopologyStore;
    .locals 2

    .line 313
    new-instance v0, Lcom/android/server/display/DisplayTopologyXmlStore;

    new-instance v1, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Landroid/util/SparseArray;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;-><init>(Lcom/android/server/display/DisplayTopologyXmlStore$Injector;)V

    return-object v0
.end method

.method public getTopology()Landroid/hardware/display/DisplayTopology;
    .locals 0

    .line 307
    new-instance p0, Landroid/hardware/display/DisplayTopology;

    invoke-direct {p0}, Landroid/hardware/display/DisplayTopology;-><init>()V

    return-object p0
.end method
