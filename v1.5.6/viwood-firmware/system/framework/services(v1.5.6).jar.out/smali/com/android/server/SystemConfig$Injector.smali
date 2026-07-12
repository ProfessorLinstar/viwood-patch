.class public Lcom/android/server/SystemConfig$Injector;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReadOnlySystemEnabledFeatures()Landroid/util/ArrayMap;
    .locals 0

    .line 235
    invoke-static {}, Lcom/android/internal/pm/RoSystemFeatures;->getReadOnlySystemEnabledFeatures()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public isReadOnlySystemDisabledFeature(Ljava/lang/String;I)Z
    .locals 0

    .line 230
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/android/internal/pm/RoSystemFeatures;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isReadOnlySystemEnabledFeature(Ljava/lang/String;I)Z
    .locals 0

    .line 225
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/android/internal/pm/RoSystemFeatures;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
