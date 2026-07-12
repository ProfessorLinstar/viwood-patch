.class public Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;
.super Landroid/os/ShellCommand;
.source "RemoteProvisioningShellCommand.java"


# static fields
.field public static final BIND_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mCallerUid:I

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetBIND_TIMEOUT()Ljava/time/Duration;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->BIND_TIMEOUT:Ljava/time/Duration;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xa

    .line 86
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->BIND_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 94
    new-instance v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-direct {v0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>(Landroid/content/Context;ILcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    .line 99
    iput p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mCallerUid:I

    .line 100
    iput-object p3, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    return-void
.end method


# virtual methods
.method public final certify()I
    .locals 7

    .line 253
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 256
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 257
    new-instance v3, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningShellCommand-IA;)V

    .line 258
    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    iget-object v5, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mCallerUid:I

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getRegistrationProxy(Landroid/content/Context;ILjava/lang/String;Ljava/util/concurrent/Executor;)Landroid/security/rkp/service/RegistrationProxy;

    move-result-object v0

    const v4, 0x6e754

    .line 259
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/security/rkp/service/RegistrationProxy;->getKeyAsync(ILandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 260
    invoke-virtual {v3}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/rkp/service/RemotelyProvisionedKey;

    invoke-virtual {v0}, Landroid/security/rkp/service/RemotelyProvisionedKey;->getEncodedCertChain()[B

    move-result-object v0

    .line 261
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 262
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 263
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 264
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string v2, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const-string v2, "(.{64})"

    const-string v3, "$1\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->stripTrailing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string v1, "-----END CERTIFICATE-----"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final composeCertificateRequestV1(Landroid/hardware/security/keymint/DeviceInfo;[BLandroid/hardware/security/keymint/ProtectedData;[B)[B
    .locals 7

    .line 220
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    iget-object p1, p1, Landroid/hardware/security/keymint/DeviceInfo;->deviceInfo:[B

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->decode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 222
    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    .line 225
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    new-instance v1, Lco/nstant/in/cbor/model/ByteString;

    new-instance v2, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v2}, Lco/nstant/in/cbor/model/Map;-><init>()V

    new-instance v3, Lco/nstant/in/cbor/model/UnsignedInteger;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    new-instance v4, Lco/nstant/in/cbor/model/UnsignedInteger;

    const-wide/16 v5, 0x5

    invoke-direct {v4, v5, v6}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    .line 227
    invoke-virtual {v2, v3, v4}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    move-result-object v2

    .line 226
    invoke-virtual {p0, v2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->encode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object v0

    new-instance v1, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v1}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 228
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object v0

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 229
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object v0

    new-instance v1, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {v1, p4}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 230
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p4

    .line 232
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 233
    invoke-virtual {v0, p1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {v0, p2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 234
    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    iget-object p2, p3, Landroid/hardware/security/keymint/ProtectedData;->protectedData:[B

    .line 235
    invoke-virtual {p0, p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->decode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    .line 236
    invoke-virtual {p1, p4}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->encode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method public final csr()I
    .locals 9

    const/4 v0, 0x0

    .line 167
    new-array v1, v0, [B

    move-object v6, v1

    .line 169
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string v3, "--challenge"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: unknown option "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 172
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v3, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {v3, v1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcBinder(Ljava/lang/String;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object v3

    .line 183
    new-array v4, v0, [Landroid/hardware/security/keymint/MacedPublicKey;

    .line 185
    iget v5, v3, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    .line 200
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: unsupported hwVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 197
    :cond_2
    invoke-interface {v1, v4, v6}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateCertificateRequestV2([Landroid/hardware/security/keymint/MacedPublicKey;[B)[B

    move-result-object v1

    goto :goto_1

    .line 188
    :cond_3
    new-instance v7, Landroid/hardware/security/keymint/DeviceInfo;

    invoke-direct {v7}, Landroid/hardware/security/keymint/DeviceInfo;-><init>()V

    .line 189
    new-instance v8, Landroid/hardware/security/keymint/ProtectedData;

    invoke-direct {v8}, Landroid/hardware/security/keymint/ProtectedData;-><init>()V

    .line 190
    iget v2, v3, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    invoke-virtual {p0, v2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->getEekChain(I)[B

    move-result-object v5

    const/4 v3, 0x0

    move-object v2, v1

    .line 191
    invoke-interface/range {v2 .. v8}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B

    move-result-object v1

    .line 193
    invoke-virtual {p0, v7, v6, v8, v1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->composeCertificateRequestV1(Landroid/hardware/security/keymint/DeviceInfo;[BLandroid/hardware/security/keymint/ProtectedData;[B)[B

    move-result-object v1

    .line 203
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final decode([B)Lco/nstant/in/cbor/model/DataItem;
    .locals 0

    .line 248
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 249
    new-instance p1, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p1, p0}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 134
    :try_start_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {v1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 138
    invoke-virtual {p0, v0, v4}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->dumpRpcInstance(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final dumpRpcInstance(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 147
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {p0, p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcBinder(Ljava/lang/String;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object p0

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hwVersion="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "rpcAuthorName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->rpcAuthorName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget p2, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "supportedEekCurve="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uniqueId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget p2, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    if-lt p2, v0, :cond_1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "supportedNumKeysInCsr="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final encode(Lco/nstant/in/cbor/model/DataItem;)[B
    .locals 1

    .line 242
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    new-instance v0, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v0, p0}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 244
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final getEekChain(I)[B
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    .line 210
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p0

    const-string p1, "goRDoQEnoFgqpAEBAycgBiFYIJm57t1e5FL2hcZMYtw+YatXSH11NymtdoAy0rPLY1jZWEAeIghLpLekyNdOAw7+uK8UTKc7b6XN3Np5xitk/pk5r3bngPpmAIUNB5gqrJFcpyUUSQY0dcqKJ3rZ41pJ6wIDhEOhASegWE6lAQECWCDQrsEVyirPc65rzMvRlh1l6LHd10oaN7lDOpfVmd+YCAM4GCAEIVggvoXnRsSjQlpA2TY6phXQLFh+PdwzAjLS/F4ehyVfcmBYQJvPkOIuS6vRGLEOjl0gJ0uEWP78MpB+cgWDvNeCvvpkeC1UEEvAMb9r6B414vAtzmwvT/L1T6XUg62WovGHWAQ="

    invoke-virtual {p0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unsupported EEK curve: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_1
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p0

    const-string p1, "goRDoQEmoFhNpQECAyYgASFYIPcUituX9MxT79JkEcTjdR9mH6RxDGzP+glGgHSHVPKtIlggXn9b9uzk9hnM/xM3/Q+hyJPbGAZ2xF3m12p3hsMtr49YQC+XjkL7vgctlUeFR5NAsB/Um0ekxESp8qEHhxDHn8sR9L+f6Dvg5zRMFfx7w34zBfTRNDztAgRgehXgedOK/ySEQ6EBJqBYcaYBAgJYIDVztz+gioCJsSZn6ct8daGvAmH8bmUDkTvTS30UlD5GAzgYIAEhWCDgQc8vDzQPHDMsQbDP1wwwVTXSHmpHE0su0UiWfiScaCJYIB/ORcX7YbqBIfnlBZubOQ52hoZHuB4vRfHOr9o/gGjbWECMs7p+ID4ysGjfYNEdffCsOI5RvP9s4Wc7Snm8Vnizmdh8igfY2rW1f3H02GvfMyc0e2XRKuuGmZirOrSAqr1Q"

    invoke-virtual {p0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final list()I
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    invoke-virtual {v0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 161
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x1

    .line 115
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x18202

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_3

    const v2, 0x32b09e

    if-eq v1, v2, :cond_2

    const v2, 0x27df2a58

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "certify"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "csr"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_5

    .line 123
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->certify()I

    move-result p0

    return p0

    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->csr()I

    move-result p0

    return p0

    .line 117
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->list()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 126
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v0
.end method

.method public onHelp()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "usage: cmd remote_provisioning SUBCOMMAND [ARGS]\nhelp\n  Show this message.\ndump\n  Dump service diagnostics.\nlist\n  List the names of the IRemotelyProvisionedComponent instances.\ncsr [--challenge CHALLENGE] NAME\n  Generate and print a base64-encoded CSR from the named\n  IRemotelyProvisionedComponent. A base64-encoded challenge can be provided,\n  or else it defaults to an empty challenge.\ncertify NAME\n  Output the PEM-encoded certificate chain provisioned for the named\n  IRemotelyProvisionedComponent.\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
