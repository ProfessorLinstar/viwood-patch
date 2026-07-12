.class public Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
.super Ljava/lang/Object;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountAuthenticatorCache-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/accounts/AuthenticatorDescription;
    .locals 1

    const/4 p0, 0x0

    .line 95
    const-string/jumbo v0, "type"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public writeAsXml(Landroid/accounts/AuthenticatorDescription;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    .line 89
    const-string/jumbo p0, "type"

    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic writeAsXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 85
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;->writeAsXml(Landroid/accounts/AuthenticatorDescription;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
