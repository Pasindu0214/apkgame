.class public final enum La/b/a/o/g$a;
.super Ljava/lang/Enum;
.source "Pixmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/b/a/o/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/b/a/o/g$a;

.field public static final enum b:La/b/a/o/g$a;

.field public static final synthetic c:[La/b/a/o/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, La/b/a/o/g$a;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, La/b/a/o/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    new-instance v0, La/b/a/o/g$a;

    const/4 v2, 0x1

    const-string v3, "SourceOver"

    invoke-direct {v0, v3, v2}, La/b/a/o/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$a;->b:La/b/a/o/g$a;

    const/4 v3, 0x2

    new-array v3, v3, [La/b/a/o/g$a;

    .line 2
    sget-object v4, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, La/b/a/o/g$a;->c:[La/b/a/o/g$a;

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

.method public static valueOf(Ljava/lang/String;)La/b/a/o/g$a;
    .locals 1

    .line 1
    const-class v0, La/b/a/o/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b/a/o/g$a;

    return-object p0
.end method

.method public static values()[La/b/a/o/g$a;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/g$a;->c:[La/b/a/o/g$a;

    invoke-virtual {v0}, [La/b/a/o/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b/a/o/g$a;

    return-object v0
.end method
