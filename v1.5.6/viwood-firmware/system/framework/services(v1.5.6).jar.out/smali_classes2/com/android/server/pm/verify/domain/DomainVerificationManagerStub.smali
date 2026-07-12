.class public Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;
.super Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;
.source "DomainVerificationManagerStub.java"


# instance fields
.field public final mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    return-void
.end method


# virtual methods
.method public getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .line 136
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public queryValidVerificationPackageNames()Ljava/util/List;
    .locals 1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 0

    .line 144
    instance-of p0, p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz p0, :cond_0

    .line 145
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    return-object p0

    .line 147
    :cond_0
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_1

    .line 148
    check-cast p1, Ljava/lang/RuntimeException;

    return-object p1

    .line 150
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .locals 1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p2

    .line 91
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p2

    .line 113
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
