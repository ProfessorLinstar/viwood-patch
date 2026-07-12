.class public Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;
.super Lcom/android/server/companion/transport/RawTransport;
.source "CompanionTransportManager.java"


# direct methods
.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/transport/RawTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public processMessage(II[B)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    return-void
.end method

.method public sendMessage(II[B)V
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Black-holing emulated message type 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sequence "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to association "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionTransport"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 327
    invoke-super {p0}, Lcom/android/server/companion/transport/RawTransport;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
