.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "WandOfWarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
