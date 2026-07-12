.class public Lcom/android/server/sensorprivacy/PersistedState$PVersion0;
.super Ljava/lang/Object;
.source "PersistedState.java"


# instance fields
.field public mIndividualEnabled:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->addState(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupgrade(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->upgrade()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    if-nez p1, :cond_0

    return-void

    .line 392
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only version 0 supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(ILcom/android/server/sensorprivacy/PersistedState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final addState(IZ)V
    .locals 1

    .line 397
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v0, p2}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final upgrade()V
    .locals 0

    .line 0
    return-void
.end method
