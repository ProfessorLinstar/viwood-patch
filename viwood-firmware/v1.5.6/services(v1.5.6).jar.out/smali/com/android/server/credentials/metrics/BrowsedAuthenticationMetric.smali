.class public Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;
.super Ljava/lang/Object;
.source "BrowsedAuthenticationMetric.java"


# instance fields
.field public mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAuthReturned:Z

.field public mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mProviderStatus:I

.field public mProviderUid:I

.field public final mSessionIdProvider:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    .line 35
    new-instance v1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v1, v2, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mFrameworkException:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    .line 44
    iput-boolean v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    .line 47
    iput p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mSessionIdProvider:I

    return-void
.end method


# virtual methods
.method public getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-object p0
.end method

.method public getFrameworkException()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mFrameworkException:Ljava/lang/String;

    return-object p0
.end method

.method public getProviderStatus()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    return p0
.end method

.method public getProviderUid()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    return p0
.end method

.method public getSessionIdProvider()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mSessionIdProvider:I

    return p0
.end method

.method public isAuthReturned()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    return p0
.end method

.method public isHasException()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    return p0
.end method

.method public setAuthEntryCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-void
.end method

.method public setAuthReturned(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    return-void
.end method

.method public setHasException(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    return-void
.end method

.method public setProviderStatus(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    return-void
.end method

.method public setProviderUid(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    return-void
.end method
