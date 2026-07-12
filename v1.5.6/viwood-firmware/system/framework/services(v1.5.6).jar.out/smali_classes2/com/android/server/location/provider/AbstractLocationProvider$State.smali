.class public final Lcom/android/server/location/provider/AbstractLocationProvider$State;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# static fields
.field public static final EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;


# instance fields
.field public final allowed:Z

.field public final extraAttributionTags:Ljava/util/Set;

.field public final identity:Landroid/location/util/identity/CallerIdentity;

.field public final properties:Landroid/location/provider/ProviderProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    const/4 v1, 0x0

    .line 73
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    sput-object v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-void
.end method

.method public constructor <init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 99
    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 100
    iput-object p3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 101
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 154
    :cond_0
    instance-of v1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 157
    :cond_1
    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 158
    iget-boolean v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v3, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v3, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v3, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 159
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 160
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 165
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public withAllowed(Z)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 3

    .line 108
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    return-object v0
.end method

.method public withExtraAttributionTags(Ljava/util/Set;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 144
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-boolean v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    return-object v0
.end method

.method public withIdentity(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 133
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-boolean v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    return-object v0
.end method

.method public withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 122
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-boolean v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    return-object v0
.end method
