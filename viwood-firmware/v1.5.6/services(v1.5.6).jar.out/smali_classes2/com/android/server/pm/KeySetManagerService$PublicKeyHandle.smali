.class public Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# instance fields
.field public final mId:J

.field public final mKey:Ljava/security/PublicKey;

.field public mRefCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    .line 94
    iput p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 95
    iput-object p5, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    const/4 p1, 0x1

    .line 85
    iput p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 86
    iput-object p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public decrRefCountLPw()J
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/security/PublicKey;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public incrRefCountLPw()V
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    return-void
.end method
