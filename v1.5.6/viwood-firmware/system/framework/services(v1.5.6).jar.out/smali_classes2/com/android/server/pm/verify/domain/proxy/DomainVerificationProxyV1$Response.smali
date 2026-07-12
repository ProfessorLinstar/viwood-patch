.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;
.super Ljava/lang/Object;
.source "DomainVerificationProxyV1.java"


# instance fields
.field public final callingUid:I

.field public final failedDomains:Ljava/util/List;

.field public final verificationCode:I

.field public final verificationId:I


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->callingUid:I

    .line 325
    iput p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->verificationId:I

    .line 326
    iput p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->verificationCode:I

    if-nez p4, :cond_0

    .line 327
    sget-object p4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iput-object p4, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->failedDomains:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/List;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;-><init>(IIILjava/util/List;)V

    return-void
.end method
