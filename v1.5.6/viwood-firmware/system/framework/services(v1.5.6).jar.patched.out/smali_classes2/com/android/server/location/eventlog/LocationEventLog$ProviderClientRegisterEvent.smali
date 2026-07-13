.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mLocationRequest:Landroid/location/LocationRequest;

.field public final mRegistered:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 361
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mRegistered:Z

    .line 362
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 363
    iput-object p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mLocationRequest:Landroid/location/LocationRequest;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider +registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mLocationRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider -registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
