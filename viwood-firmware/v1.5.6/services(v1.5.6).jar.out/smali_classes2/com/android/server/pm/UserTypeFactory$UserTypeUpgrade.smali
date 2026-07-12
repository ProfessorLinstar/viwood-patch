.class public Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
.super Ljava/lang/Object;
.source "UserTypeFactory.java"


# instance fields
.field public final mFromType:Ljava/lang/String;

.field public final mToType:Ljava/lang/String;

.field public final mUpToVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    .line 819
    iput-object p2, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    .line 820
    iput p3, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    return-void
.end method


# virtual methods
.method public getFromType()Ljava/lang/String;
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    return-object p0
.end method

.method public getToType()Ljava/lang/String;
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    return-object p0
.end method

.method public getUpToVersion()I
    .locals 0

    .line 832
    iget p0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    return p0
.end method
