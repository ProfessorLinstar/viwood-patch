.class public Lcom/android/server/stats/pull/psi/PsiData;
.super Ljava/lang/Object;
.source "PsiData.java"


# instance fields
.field public final mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

.field public final mResourceType:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public final mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/stats/pull/psi/PsiData;->mResourceType:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    .line 71
    iput-object p2, p0, Lcom/android/server/stats/pull/psi/PsiData;->mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    .line 72
    iput-object p3, p0, Lcom/android/server/stats/pull/psi/PsiData;->mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    return-void
.end method


# virtual methods
.method public getFullAvg10SecPercentage()F
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmAvg10SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F

    move-result p0

    return p0
.end method

.method public getFullAvg300SecPercentage()F
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmAvg300SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F

    move-result p0

    return p0
.end method

.method public getFullAvg60SecPercentage()F
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmAvg60SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F

    move-result p0

    return p0
.end method

.method public getFullTotalUsec()J
    .locals 2

    .line 104
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmTotalUsec(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResourceType()Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mResourceType:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    return-object p0
.end method

.method public getSomeAvg10SecPercentage()F
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmAvg10SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F

    move-result p0

    return p0
.end method

.method public getSomeAvg300SecPercentage()F
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmAvg300SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F

    move-result p0

    return p0
.end method

.method public getSomeAvg60SecPercentage()F
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmAvg60SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F

    move-result p0

    return p0
.end method

.method public getSomeTotalUsec()J
    .locals 2

    .line 89
    iget-object p0, p0, Lcom/android/server/stats/pull/psi/PsiData;->mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    invoke-static {p0}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->-$$Nest$fgetmTotalUsec(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)J

    move-result-wide v0

    return-wide v0
.end method
