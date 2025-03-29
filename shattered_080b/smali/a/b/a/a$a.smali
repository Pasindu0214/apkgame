.class public final enum La/b/a/a$a;
.super Ljava/lang/Enum;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/b/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/b/a/a$a;

.field public static final enum b:La/b/a/a$a;

.field public static final enum c:La/b/a/a$a;

.field public static final enum d:La/b/a/a$a;

.field public static final enum e:La/b/a/a$a;

.field public static final enum f:La/b/a/a$a;

.field public static final synthetic g:[La/b/a/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, La/b/a/a$a;

    const/4 v1, 0x0

    const-string v2, "Android"

    invoke-direct {v0, v2, v1}, La/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/a$a;->a:La/b/a/a$a;

    new-instance v0, La/b/a/a$a;

    const/4 v2, 0x1

    const-string v3, "Desktop"

    invoke-direct {v0, v3, v2}, La/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/a$a;->b:La/b/a/a$a;

    new-instance v0, La/b/a/a$a;

    const/4 v3, 0x2

    const-string v4, "HeadlessDesktop"

    invoke-direct {v0, v4, v3}, La/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/a$a;->c:La/b/a/a$a;

    new-instance v0, La/b/a/a$a;

    const/4 v4, 0x3

    const-string v5, "Applet"

    invoke-direct {v0, v5, v4}, La/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/a$a;->d:La/b/a/a$a;

    new-instance v0, La/b/a/a$a;

    const/4 v5, 0x4

    const-string v6, "WebGL"

    invoke-direct {v0, v6, v5}, La/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/a$a;->e:La/b/a/a$a;

    new-instance v0, La/b/a/a$a;

    const/4 v6, 0x5

    const-string v7, "iOS"

    invoke-direct {v0, v7, v6}, La/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/a$a;->f:La/b/a/a$a;

    const/4 v7, 0x6

    new-array v7, v7, [La/b/a/a$a;

    .line 2
    sget-object v8, La/b/a/a$a;->a:La/b/a/a$a;

    aput-object v8, v7, v1

    sget-object v1, La/b/a/a$a;->b:La/b/a/a$a;

    aput-object v1, v7, v2

    sget-object v1, La/b/a/a$a;->c:La/b/a/a$a;

    aput-object v1, v7, v3

    sget-object v1, La/b/a/a$a;->d:La/b/a/a$a;

    aput-object v1, v7, v4

    sget-object v1, La/b/a/a$a;->e:La/b/a/a$a;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, La/b/a/a$a;->g:[La/b/a/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/b/a/a$a;
    .locals 1

    .line 1
    const-class v0, La/b/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b/a/a$a;

    return-object p0
.end method

.method public static values()[La/b/a/a$a;
    .locals 1

    .line 1
    sget-object v0, La/b/a/a$a;->g:[La/b/a/a$a;

    invoke-virtual {v0}, [La/b/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b/a/a$a;

    return-object v0
.end method
