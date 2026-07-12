.class public final Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"

# interfaces
.implements Lcom/android/server/backup/utils/DataStreamCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/backup/BackupPasswordManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInputStream;)Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    .locals 1

    .line 300
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 301
    new-array p0, p0, [B

    .line 302
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 303
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 304
    new-instance v0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-direct {v0, p1, p0}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;->deserialize(Ljava/io/DataInputStream;)Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;Ljava/io/DataOutputStream;)V
    .locals 0

    .line 292
    iget-object p0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 293
    iget-object p0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 294
    iget-object p0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V
    .locals 0

    .line 287
    check-cast p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;->serialize(Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;Ljava/io/DataOutputStream;)V

    return-void
.end method
