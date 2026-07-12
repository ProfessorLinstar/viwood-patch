.class public final Lcom/android/server/devicepolicy/PackageSetPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "PackageSetPolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 1

    .line 46
    const-string/jumbo p0, "strings"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 48
    const-string p0, "DevicePolicyEngine"

    const-string p1, "Error parsing PackageSet policy value."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 51
    :cond_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 52
    new-instance p1, Landroid/app/admin/PackageSetPolicyValue;

    invoke-direct {p1, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public bridge synthetic saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Set;)V

    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Set;)V
    .locals 1

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string p0, ";"

    .line 40
    invoke-static {p0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    .line 39
    const-string/jumbo v0, "strings"

    invoke-interface {p1, p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
