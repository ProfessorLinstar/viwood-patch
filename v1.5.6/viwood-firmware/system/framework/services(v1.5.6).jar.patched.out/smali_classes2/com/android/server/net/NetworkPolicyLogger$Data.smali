.class public final Lcom/android/server/net/NetworkPolicyLogger$Data;
.super Ljava/lang/Object;
.source "NetworkPolicyLogger.java"


# instance fields
.field public bfield1:Z

.field public bfield2:Z

.field public ifield1:I

.field public ifield2:I

.field public ifield3:I

.field public ifield4:I

.field public lfield1:J

.field public sfield1:Ljava/lang/String;

.field public timeStamp:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyLogger-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-void
.end method
