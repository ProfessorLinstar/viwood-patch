.class public Lcom/android/server/locksettings/AuthSecretHidlAdapter;
.super Ljava/lang/Object;
.source "AuthSecretHidlAdapter.java"

# interfaces
.implements Landroid/hardware/authsecret/IAuthSecret;


# instance fields
.field public final mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret;


# direct methods
.method public constructor <init>(Landroid/hardware/authsecret/V1_0/IAuthSecret;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/locksettings/AuthSecretHidlAdapter;->mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 53
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AuthSecretHidlAdapter does not support asBinder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPrimaryUserCredential([B)V
    .locals 3

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 39
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 40
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/AuthSecretHidlAdapter;->mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {p0, v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V

    return-void
.end method
