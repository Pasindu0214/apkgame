.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2$1;
.super Ljava/lang/Object;
.source "EtherealChains.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-void
.end method
