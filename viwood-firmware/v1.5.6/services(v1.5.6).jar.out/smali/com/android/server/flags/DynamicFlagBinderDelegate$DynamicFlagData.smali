.class public Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;
.super Ljava/lang/Object;
.source "DynamicFlagBinderDelegate.java"


# instance fields
.field public mDefaultValue:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mNamespace:Ljava/lang/String;

.field public final mPids:Ljava/util/Set;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    .line 218
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/flags/DynamicFlagBinderDelegate-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addClientPid(I)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsPid(I)Z
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 248
    instance-of v1, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    if-nez v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    check-cast p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 254
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    return-void
.end method
