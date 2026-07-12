.class public final Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mPriority:I

.field public final mRequests:Landroid/util/SparseArray;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 83
    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    .line 84
    iput p3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;)I
    .locals 0

    .line 98
    iget p1, p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    iget p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 77
    check-cast p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->compareTo(Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;)I

    move-result p0

    return p0
.end method

.method public setRequest(ILandroid/hardware/lights/LightState;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
