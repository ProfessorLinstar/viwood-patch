.class public Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;
.super Ljava/lang/Object;
.source "Vpn.java"


# instance fields
.field public final encapType:I

.field public final ipVersion:I

.field public final keepaliveDelaySec:I

.field public final mccMnc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    .line 457
    iput p2, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->keepaliveDelaySec:I

    .line 458
    iput p3, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->encapType:I

    .line 459
    iput p4, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->ipVersion:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierConfigInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") [keepaliveDelaySec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->keepaliveDelaySec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->encapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ipVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->ipVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
